resource "local_file" "file1" {
    filename = "/Users/sadofrazer/Données/DevOps/TERRAFORM/terraform_training/AJC/TP-2/frazer5.txt"
    content = "Bonjour AJC"
}

resource "local_file" "fileC" {
    filename = "/Users/sadofrazer/Données/DevOps/TERRAFORM/terraform_training/AJC/TP-2/frazer.txt"
    content = "le contenu du fichier précedent est : ${local_file.file1.content}"
}

output "file_id" {
    value = local_file.file1.id
}

output "file_object" {
    value = local_file.file1
    sensitive = true
}