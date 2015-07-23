module ApartmentsHelper

  def breadcrumbs(apartment)
    "#{t('forms.building')} #{apartment.block.upcase} > #{apartment.floor} > ##{apartment.unit_id}"
  end

  def map_areas
    {
      a: [
        '-1,211,244,114,243,92,-3,188,-6,181',
        '242,91,-4,189,-4,160,242,71,241,72',
        '248,10,242,55,242,72,-2,159,-3,79,243,6,242,5'
      ],
      b: [
        '396,181,384,187,238,114,242,92,418,171,418,170',
        '242,97,242,75,444,165,419,168,415,172,241,95',
        '247,77,253,13,258,14,291,15,492,88,497,92,495,91,497,123,497,147,478,153,249,58,249,58'
      ],
      c: [
        '245,453,272,474,287,457,369,481,427,488,493,485,493,294,367,385,352,385,274,438,245,419',
        '498,272,365,367,353,348,267,406,270,403,210,356,208,394,245,418,246,440,267,436,345,390,360,391,493,294,489,290',
        '159,318,183,301,433,163,476,154,493,148,493,272,365,363,353,347,272,402,162,322,156,317'
      ]
      # Block D is currently reserved
      # d: [
      #   '0,324,135,445,137,435,180,469,173,462,242,413,245,414,245,454,268,472,276,477,261,492,168,492,-6,340',
      #   '-1,300,0,317,133,436,175,467,246,416,243,412,237,414,205,390,207,370,132,416',
      #   '0,300,129,414,214,360,158,318,177,307,124,272,103,281,64,246,38,236,29,237,4,254,-4,269'
      # ]
    }.with_indifferent_access
  end

  def blocks
    Refinery::Apartments::Apartment::BLOCKS
  end

  def floors_map_image(apartment)
    if @apartment.block == 'c' && @apartment.floor == 1
      image_tag 'apartments/show/1,05-f.jpg'
    elsif @apartment.floor == 1
      image_tag 'apartments/show/1,2-f.jpg'
    elsif @apartment.floor == 2 && @apartment.total_floors == 2
      image_tag 'apartments/show/2,3-f.jpg'
    else
       image_tag 'apartments/show/3-f.jpg'
    end
  end

  def get_floor_number(apartment, apartment_floor)
    (apartment.floor + apartment_floor.floor_number) - 1  # Because we have each floor number that starts from 1
  end

  def get_apartment_image_path(kind, apartment, apartment_floor, size)
    floor = get_floor_number(apartment, apartment_floor)
    size = size == 'full' ? '' : "-#{size}"
    asset_url "apartments/show/#{kind}/#{apartment.unit_id}-#{floor}#{size}.jpg"
  end

  def get_model_path(apartment, apartment_floor, size = 'full')
    get_apartment_image_path('models', apartment, apartment_floor, size)
  end

  def get_plan_path(apartment, apartment_floor, size = 'full')
    get_apartment_image_path('plans', apartment, apartment_floor, size)
  end

  # Creates multiple anchor tags
  def get_gallery_for(kind, apartment, apartment_floor)
    angles = %w(-40 50 140)
    items = []
    floor = get_floor_number(apartment, apartment_floor)

    base_image_path = {
      :models_dir => 'apartments/show/models/',
      :angle => '',
      :apartment_id => "/#{apartment.unit_id}",
      :image => kind == 'gallery_models' ? '-g.jpg' : "-#{floor}.jpg"
    }

    angles.each do |angle|
      base_image_path[:angle] = angle

      items.push link_to('', asset_url(base_image_path.values.join))
    end

    raw items.join
  end

  def t_floor_number(number)
    t "floor_#{number}", scope: 'apartment_page'
  end

  def total_apartments
    Refinery::Apartments::Apartment.total
  end

end
