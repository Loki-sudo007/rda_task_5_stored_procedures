USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory (
	IN warehouse_id_param INT
)
BEGIN
	SELECT
    Products.Name,
    ProductInventory.WarehouseAmount
    FROM Products
    JOIN ProductInventory
    ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = warehouse_id_param;
END //
DELIMITER ;

    
