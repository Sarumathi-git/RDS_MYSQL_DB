resource "aws_db_instance" "mysql-db" {
    identifier                        = "mysqldatabase"
    allocated_storage                 =  20
    engine                            = "mysql"
    engine_version                    = "8.0.27"
    instance_class                    = "db.t2.micro"
    username                          = var.username
    password                          = var.password
    availability_zone                 = "ap-south-1a"
    publicly_accessible               = "true"
    deletion_protection               = "true"
    skip_final_snapshot               = "true" 

    tags = {
        name                          = "MySQL RDS Instance"
    }  
}