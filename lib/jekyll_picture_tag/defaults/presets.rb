module PictureTag
  DEFAULT_PRESET = { 'markup' => 'auto',
                     'formats' => ['original'],
                     'widths' => [400, 600, 800, 1000],
                     'fallback_width' => 800,
                     'fallback_format' => 'original',
                     'noscript' => false,
                     'link_source' => false,
                     'quality' => 75,
                     'data_sizes' => true,
                     'keep' => 'attention',
                     'dimension_attributes' => false,
                     'strip_metadata' => true,
                     'image_options' => {
                       'avif' => { 'compression' => 'av1', 'speed' => 8 }
                     } }.freeze

  STOCK_PRESETS = {
    'jpt-webp' => { 'formats' => %w[webp original] },

    'jpt-avif' => { 'formats' => %w[avif webp original] },

    'jpt-lazy' => { 'markup' => 'data_auto',
                    'noscript' => true,
                    'attributes' => { 'parent' => 'class="lazy"' } },

    'jpt-loaded' => { 'formats' => %w[avif jp2 webp original],
                      'dimension_attributes' => true },

    'jpt-direct' => { 'markup' => 'direct_url' },

    'jpt-thumbnail' => { 'base_width' => 250,
                         'pixel_ratios' => [1, 1.5, 2],
                         'formats' => %w[webp original] },

    'jpt-avatar' => { 'base_width' => 100,
                      'pixel_ratios' => [1, 1.5, 2],
                      'formats' => %w[webp original],
                      'crop' => '1:1' }
  }.freeze

  STOCK_MEDIA_QUERIES = {
    'jpt-mobile' => 'max-width: 480px',
    'jpt-tablet' => 'max-width: 768',
    'jpt-laptop' => 'max-width: 1024px',
    'jpt-desktop' => 'max-width: 1200',
    'jpt-wide' => 'min-width: 1201'
  }.freeze
end
