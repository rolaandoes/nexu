OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '806401729459226', 'cdfd4c1b6119c824d545bd877c16c9ee'
end