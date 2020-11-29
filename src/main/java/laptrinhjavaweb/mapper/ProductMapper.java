package laptrinhjavaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import laptrinhjavaweb.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {

		try {
			ProductModel product = new ProductModel();
			product.setId(rs.getLong("id"));
			product.setName(rs.getString("name"));
			product.setThumbnail(rs.getString("thumbnail"));
			product.setShortDescription(rs.getString("shortdescription"));
			product.setContent(rs.getString("content"));
			product.setPrice(rs.getInt("price"));
			product.setCreatedDate(rs.getTimestamp("createddate"));
			product.setCreatedBy(rs.getString("createdby"));
			if (rs.getTimestamp("modifieddate") != null) {
				product.setModifiedDate(rs.getTimestamp("modifieddate"));
			}
			if (rs.getString("modifiedby") != null) {
				product.setModifiedBy(rs.getString("modifiedby"));
			}
			return product;

		} catch (SQLException e) {
			return null;
		}

	}

}
