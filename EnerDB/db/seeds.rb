# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ProductCategory.create([
	{category_name: 'Hardware'},
	{category_name: 'Software'},
	{category_name: 'Games'},
	{category_name: 'Video/Foto/TV'},
	{category_name: 'Telefon & Co'},
	{category_name: 'Audio/HIFI'},
	{category_name: 'Filme'},
	{category_name: 'Haushalt'},
	{category_name: 'Sport & Freizeit'},
	{category_name: 'Drogerie'}
	])
ProductCategory.create([
	{category_name: 'Prozessoren (CPUs)', product_category_id: ProductCategory.find_by_category_name('Hardware').id},
	{category_name: 'Arbeitsspeicher (RAM)', product_category_id: ProductCategory.find_by_category_name('Hardware').id},
	{category_name: 'Grafikkarten', product_category_id: ProductCategory.find_by_category_name('Hardware').id}
	])
ProductCategory.create([
	{category_name: 'Intel Sockel 775', product_category_id: ProductCategory.find_by_category_name('Prozessoren (CPUs)').id},
	{category_name: 'Intel Sockel 1155', product_category_id: ProductCategory.find_by_category_name('Prozessoren (CPUs)').id},
	{category_name: 'AMD Sockel AM3+', product_category_id: ProductCategory.find_by_category_name('Prozessoren (CPUs)').id}
	])
Product.create([
	{product_name: 'Intel Core i5-3470', product_category_id: ProductCategory.find_by_category_name('Intel Sockel 1155').id},
	{product_name: 'Intel Core i5-3570K', product_category_id: ProductCategory.find_by_category_name('Intel Sockel 1155').id},
	{product_name: 'Intel Core i7-3770', product_category_id: ProductCategory.find_by_category_name('Intel Sockel 1155').id},
	{product_name: 'AMD FX-6300', product_category_id: ProductCategory.find_by_category_name('AMD Sockel AM3+').id},
	{product_name: 'AMD FX-8320', product_category_id: ProductCategory.find_by_category_name('AMD Sockel AM3+').id},
	{product_name: 'AMD FX-8350', product_category_id: ProductCategory.find_by_category_name('AMD Sockel AM3+').id}
	])