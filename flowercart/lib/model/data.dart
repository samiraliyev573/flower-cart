import 'package:flutter/material.dart';

class SliderModel {
  String imagePath;
  String title;
  String description;

  SliderModel({this.imagePath, this.title, this.description});

  void setImageAssetPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setImageTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDesc) {
    description = getDesc;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return description;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/images/illustration1.png");
  sliderModel.setImageTitle("Plant");
  sliderModel.setDescription(
      "Plant your own seeds from scratch. We will be with you along your journey to help you with everything");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //2
  sliderModel.setImageAssetPath("assets/images/illustration2.png");
  sliderModel.setImageTitle("Growth");
  sliderModel.setDescription(
      "Use tips and tutorials from our app to help your flower grow fast");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/images/illustration3.png");
  sliderModel.setImageTitle("Memories");
  sliderModel.setDescription(
      "Take pictures of the plant along the way to see how much it has grown");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setImageAssetPath("assets/images/illustration4.png");
  sliderModel.setImageTitle("Celebrate");
  sliderModel.setDescription(
      "Embrace your journey and celebrate your blooming flowers with others and our community");
  slides.add(sliderModel);

  return slides;
}
