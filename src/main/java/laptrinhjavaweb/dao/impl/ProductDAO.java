package laptrinhjavaweb.dao.impl;

import java.util.List;

import laptrinhjavaweb.dao.IProductDAO;
import laptrinhjavaweb.mapper.ProductMapper;
import laptrinhjavaweb.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {
	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM products";
		return query(sql, new ProductMapper());
	}

	@Override
	public ProductModel findOne(Long id) {

		return null;
	}

	@Override
	public List<ProductModel> findByCategoryId(Long categoryId) {
		String sql = "SELECT * from category WHERE id=?";
		return query(sql, new ProductMapper(), categoryId);
	}

	@Override
	public Long save(ProductModel productModel) {
		String sql = "INSERT INTO products(name_product,thumbnail,shortdescription,content,price,categoryid, createddate, createdby) values"
				+ "(?,?,?,?,?,?,?,?)";
		return insert(sql.toString(), productModel.getName(), productModel.getThumbnail(),
				productModel.getShortDescription(), productModel.getContent(), productModel.getPrice(),
				productModel.getCategoryId(), productModel.getCreatedDate(), productModel.getCreatedBy());
	}

	@Override
	public void update(ProductModel updateProduct) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub

	}

}
