<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('permissions')->truncate();

        DB::table('permissions')->insert([
             
              // Customer Start
              ['name' => 'manage_customer', 'display_name' => 'Manage Customers', 'description' => 'Manage Customers'],

              [ 'name' => 'add_customer', 'display_name' => 'Add Customer', 'description' => 'Add Customer'],
              [ 'name' => 'edit_customer', 'display_name' => 'Edit Customer', 'description' => 'Edit Customer'],
              ['name' => 'delete_customer', 'display_name' => 'Delete Customer', 'description' => 'Delete Customer'],


              // Items Start
              ['name' => 'manage_item', 'display_name' => 'Manage Items', 'description' => 'Manage Items'],
              ['name' => 'add_item', 'display_name' => 'Add Item', 'description' => 'Add Item'],
              ['name' => 'edit_item', 'display_name' => 'Edit Item', 'description' => 'Edit Item'],
              ['name' => 'delete_item', 'display_name' => 'Delete Item', 'description' => 'Delete Item'],

              // Supplier Start
              ['name' => 'manage_supplier', 'display_name' => 'Manage Suppliers', 'description' => 'Manage Suppliers'],
              ['name' => 'add_supplier', 'display_name' => 'Add Supplier', 'description' => 'Add Supplier'],
              ['name' => 'edit_supplier', 'display_name' => 'Edit Supplier', 'description' => 'Edit Supplier'],
              ['name' => 'delete_supplier', 'display_name' => 'Delete Supplier', 'description' => 'Delete Supplier'],
              

              // Sales Start
              ['name' => 'manage_sale', 'display_name' => 'Manage Sales', 'description' => 'Manage Sales'],

              ['name' => 'manage_order', 'display_name' => 'Manage Orders', 'description' => 'Manage Orders'],
              ['name' => 'add_order', 'display_name' => 'Add Order', 'description' => 'Add Order'],
              ['name' => 'edit_order', 'display_name' => 'Edit Order', 'description' => 'Edit Order'],
              ['name' => 'delete_order', 'display_name' => 'Delete Order', 'description' => 'Delete Order'],

              ['name' => 'manage_invoice', 'display_name' => 'Manage Invoices', 'description' => 'Manage Invoices'],
              ['name' => 'add_invoice', 'display_name' => 'Add Invoice', 'description' => 'Add Invoice'],
              ['name' => 'edit_invoice', 'display_name' => 'Edit Invoice', 'description' => 'Edit Invoice'],
              ['name' => 'delete_invoice', 'display_name' => 'Delete Invoice', 'description' => 'Delete Invoice'],

              ['name' => 'manage_payment', 'display_name' => 'Manage Payment', 'description' => 'Manage Payment'],
              ['name' => 'add_payment', 'display_name' => 'Add Payment', 'description' => 'Add Payment'],
              ['name' => 'edit_payment', 'display_name' => 'Edit Payment', 'description' => 'Edit Payment'],
              ['name' => 'delete_payment', 'display_name' => 'Delete Payment', 'description' => 'Delete Payment'],

              ['name' => 'manage_shipment', 'display_name' => 'Manage Shipment', 'description' => 'Manage Shipment'],
              ['name' => 'add_shipment', 'display_name' => 'Add Shipment', 'description' => 'Add Shipment'],
              ['name' => 'edit_shipment', 'display_name' => 'Edit Shipment', 'description' => 'Edit Shipment'],
              ['name' => 'delete_shipment', 'display_name' => 'Delete Shipment', 'description' => 'Delete Shipment'],


              // Purchase Start
              ['name' => 'manage_purchase', 'display_name' => 'Manage Purchase', 'description' => 'Manage Purchase'],
              ['name' => 'add_purchase', 'display_name' => 'Add Purchase', 'description' => 'Add Purchase'],
              ['name' => 'edit_purchase', 'display_name' => 'Edit Purchase', 'description' => 'Edit Purchase'],
              ['name' => 'delete_purchase', 'display_name' => 'Delete Purchase', 'description' => 'Delete Purchase'],
              

              // Purchase Start
              ['name' => 'manage_transfer', 'display_name' => 'Manage Transfer', 'description' => 'Manage Transfer'],
              ['name' => 'add_transfer', 'display_name' => 'Add Transfer', 'description' => 'Add Transfer'],
              ['name' => 'edit_transfer', 'display_name' => 'Edit Transfer', 'description' => 'Edit Transfer'],
              ['name' => 'delete_transfer', 'display_name' => 'Delete Transfer', 'description' => 'Delete Transfer'],
 
              // Report Start
              ['name' => 'manage_report', 'display_name' => 'Manage Reports', 'description'=> 'Manage Report'],

              ['name' => 'manage_stock_on_hand', 'display_name' => 'Manage Inventory Stock On Hand' , 'description'=> 'Manage Inventory Stock On Hand'],

              ['name' => 'manage_sale_report', 'display_name' => 'Manage Sales Report' , 'description'=> 'Manage Sales Report'],
             
              ['name' => 'manage_sale_history_report', 'display_name' => 'Manage Sales History Report', 'description' => 'Manage Sales History Report'],

              ['name' => 'manage_purchase_report', 'display_name' => 'Manage Purchase Report' , 'description'=> 'Manage Purchase Report'],

              ['name' => 'manage_team_report', 'display_name' => 'Manage Team Member Report' , 'description'=> 'Manage Team Member Report'],

              // Setiings Start

              ['name' => 'manage_setting', 'display_name' => 'Manage Settings', 'description' => 'Manage Settings'],

              // Company Setiings Start
              ['name' => 'manage_company_setting', 'display_name' => 'Manage Company Setting', 'description' => 'Manage Company Setting'],

              ['name' => 'manage_team_member', 'display_name' => 'Manage Team Member', 'description' => 'Manage Team Member'],
              ['name' => 'add_team_member', 'display_name' => 'Add Team Member', 'description' => 'Add Team Member'],
              ['name' => 'edit_team_member', 'display_name' => 'Edit Team Member', 'description' => 'Edit Team Member'],
              ['name' => 'delete_team_member', 'display_name' => 'Delete Team Member', 'description' => 'Delete Team Member'],

              ['name' => 'manage_role', 'display_name' => 'Manage Roles', 'description' => 'Manage Roles'],

              ['name' => 'add_role', 'display_name' => 'Add Role', 'description' => 'Add Role'],
              ['name' => 'edit_role', 'display_name' => 'Edit Role', 'description' => 'Edit Role'],
              ['name' => 'delete_role', 'display_name' => 'Delete Role', 'description' => 'Delete Role'],

              ['name' => 'manage_location', 'display_name' => 'Manage Location', 'description' => 'Manage Location'],
              ['name' => 'add_location', 'display_name' => 'Add Location', 'description' => 'Add Location'],
              ['name' => 'edit_location', 'display_name' => 'Edit Location', 'description' => 'Edit Location'],
              ['name' => 'delete_location', 'display_name' => 'Delete Location', 'description' => 'Delete Location'],

              // Start General Setting

              ['name' => 'manage_general_setting', 'display_name' => 'Manage General Settings', 'description' => 'Manage General Settings'],
              ['name' => 'manage_item_category', 'display_name' => 'Manage Item Category', 'description' => 'Manage Item Category'],
              ['name' => 'add_item_category', 'display_name' => 'Add Item Category', 'description' => 'Add Item Category'],
              ['name' => 'edit_item_category', 'display_name' => 'Edit Item Category', 'description' => 'Edit Item Category'],
              ['name' => 'delete_item_category', 'display_name' => 'Delete Item Category', 'description' => 'Delete Item Category'],


              ['name' => 'manage_income_expense_category', 'display_name' => 'Manage Income Expense Category', 'description' => 'Manage Income Expense Category'],
              ['name' => 'add_income_expense_category', 'display_name' => 'Add Income Expense Category', 'description' => 'Add Income Expense Category'],
              ['name' => 'edit_income_expense_category', 'display_name' => 'Edit Income Expense Category', 'description' => 'Edit Income Expense Category'],
              ['name' => 'delete_income_expense_category', 'display_name' => 'Delete Income Expense Category', 'description' => 'Delete Income Expense Category'],


              ['name' => 'manage_unit', 'display_name' => 'Manage Unit', 'description' => 'Manage Unit'],
              ['name' => 'add_unit', 'display_name' => 'Add Unit', 'description' => 'Add Unit'],
              ['name' => 'edit_unit', 'display_name' => 'Edit Unit', 'description' => 'Edit Unit'],
              ['name' => 'delete_unit', 'display_name' => 'Delete Unit', 'description' => 'Delete Unit'],

              ['name' => 'manage_db_backup', 'display_name' => 'Manage Database Backup', 'description' => 'Manage Database Backup'],

              ['name' => 'add_db_backup', 'display_name' => 'Add Database Backup', 'description' => 'Add Database Backup'],

              ['name' => 'download_db_backup', 'display_name' => 'Download Database Backup', 'description' => 'Download Database Backup'], 

              ['name' => 'delete_db_backup', 'display_name' => 'Delete Database Backup', 'description' => 'Delete Database Backup'],

              ['name' => 'manage_email_setup', 'display_name' => 'Manage Email Setup', 'description' => 'Manage Email Setup'],

              // Start Finance
              ['name' => 'manage_finance', 'display_name' => 'Manage Finance', 'description' => 'Manage Finance'],

              ['name' => 'manage_tax', 'display_name' => 'Manage Taxs', 'description' => 'Manage Taxs'],
              ['name' => 'add_tax', 'display_name' => 'Add Tax', 'description' => 'Add Tax'],
              ['name' => 'edit_tax', 'display_name' => 'Edit Tax', 'description' => 'Edit Tax'],
              ['name' => 'delete_tax', 'display_name' => 'Delete Tax', 'description' => 'Delete Tax'],

              ['name' => 'manage_sales_type', 'display_name' => 'Manage Sales Type', 'description' => 'Manage Sales Type'],
              
              ['name' => 'add_sales_type', 'display_name' => 'Add Sales Type', 'description' => 'Add Sales Type'],
              ['name' => 'edit_sales_type', 'display_name' => 'Edit Sales Type', 'description' => 'Edit Sales Type'],
              ['name' => 'delete_sales_type', 'display_name' => 'Delete Sales Type', 'description' => 'Delete Sales Type'],

              ['name' => 'manage_currency', 'display_name' => 'Manage Currency', 'description' => 'Manage Currency'],
              ['name' => 'add_currency', 'display_name' => 'Add Currency', 'description' => 'Add Currency'],
              ['name' => 'edit_currency', 'display_name' => 'Edit Currency', 'description' => 'Edit Currency'],
              ['name' => 'delete_currency', 'display_name' => 'Delete Currency', 'description' => 'Delete Currency'],

              ['name' => 'manage_payment_term', 'display_name' => 'Manage Payment Term', 'description' => 'Manage Payment Term'],
              ['name' => 'add_payment_term', 'display_name' => 'Add Payment Term', 'description' => 'Add Payment Term'],
              ['name' => 'edit_payment_term', 'display_name' => 'Edit Payment Term', 'description' => 'Edit Payment Term'],
              ['name' => 'delete_payment_term', 'display_name' => 'Delete Payment Term', 'description' => 'Delete Payment Term'],

              ['name' => 'manage_payment_method', 'display_name' => 'Manage Payment Method', 'description' => 'Manage Payment Method'],
              ['name' => 'add_payment_method', 'display_name' => 'Add Payment Method', 'description' => 'Add Payment Method'],
              ['name' => 'edit_payment_method', 'display_name' => 'Edit Payment Method', 'description' => 'Edit Payment Method'],
              ['name' => 'delete_payment_method', 'display_name' => 'Delete Payment Method', 'description' => 'Delete Payment Method'],

              ['name' => 'manage_payment_gateway', 'display_name' => 'Manage Payment Method', 'description' => 'Manage Payment Gateway'],   

               // Start Email Template   
              ['name' => 'manage_email_template', 'display_name' => 'Manage Email Template', 'description' => 'Manage Email Template'], 

              ['name' => 'manage_order_email_template', 'display_name' => 'Manage Order Template', 'description' => 'Manage Order Email Template'], 

              ['name' => 'manage_invoice_email_template', 'display_name' => 'Manage Invoice Email Template', 'description' => 'Manage Invoice Email Template'],

              ['name' => 'manage_purchase_order_email_template', 'display_name' => 'Manage Purchase Order Email Template', 'description' => 'Manage Purchase Order Email Template'],              

              ['name' => 'manage_payment_email_template', 'display_name' => 'Manage Payment Email Template', 'description' => 'Manage Payment Email Template'],

              ['name' => 'manage_packing_email_template', 'display_name' => 'Manage Packing Email Template', 'description' => 'Manage Packing Email Template'],

              ['name' => 'manage_shipment_email_template', 'display_name' => 'Manage Shipment Email Template', 'description' => 'Manage Shipment Email Template'],

                // Start Preference
               ['name' => 'manage_preference', 'display_name' => 'Manage Preference', 'description' => 'Manage Preference'],
               
                // Start Print barcode/label
               ['name' => 'manage_barcode', 'display_name' => 'Manage barcode/label', 'description' => 'Manage barcode/label']             

        ]);
    }
}
