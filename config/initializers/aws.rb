Aws.config.update({
  region: 'ap-northeast-1',
  credentials: Aws::Credentials.new('AKIATUVAVRMJ75R4N3FK', 'PVpkhpwo2RBr5uG5lst2Mn5KQMdzwSxWeP0EZaRv'),
})

S3_BUCKET = Aws::S3::Resource.new.bucket('sanpaitool')