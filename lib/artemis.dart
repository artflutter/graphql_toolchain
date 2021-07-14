import 'package:http/http.dart';

// logo: Upload!
MultipartFile fromGraphQLUploadToDartMultipartFile(MultipartFile file) => file;
MultipartFile fromDartMultipartFileToGraphQLUpload(MultipartFile file) => file;

// productPhotos: [Upload!]!
List<MultipartFile> fromGraphQLListUploadToDartListMultipartFile(
        List<MultipartFile> file) =>
    file;
List<MultipartFile> fromDartListMultipartFileToGraphQLListUpload(
        List<MultipartFile> file) =>
    file;

// moreImages: [Upload!]
List<MultipartFile>?
    fromGraphQLListNullableUploadToDartListNullableMultipartFile(
            List<MultipartFile>? file) =>
        file;
List<MultipartFile>?
    fromDartListNullableMultipartFileToGraphQLListNullableUpload(
            List<MultipartFile>? file) =>
        file;

// logoSmall: Upload
MultipartFile? fromGraphQLUploadNullableToDartMultipartFileNullable(
        MultipartFile? file) =>
    file;
MultipartFile? fromDartMultipartFileNullableToGraphQLUploadNullable(
        MultipartFile? file) =>
    file;

// productPhotosSmall: [Upload]
List<MultipartFile?>?
    fromDartListNullableMultipartFileNullableToGraphQLListNullableUploadNullable(
            List<MultipartFile?>? file) =>
        file;
List<MultipartFile?>?
    fromGraphQLListNullableUploadNullableToDartListNullableMultipartFileNullable(
            List<MultipartFile?>? file) =>
        file;

// productPhotosSmall: [Upload]!
List<MultipartFile?>
    fromGraphQLListUploadNullableToDartListMultipartFileNullable(
            List<MultipartFile?> file) =>
        file;
List<MultipartFile?>
    fromDartListMultipartFileNullableToGraphQLListUploadNullable(
            List<MultipartFile?> file) =>
        file;
