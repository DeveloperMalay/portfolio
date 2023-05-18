class ServicesDetailsModel {
  final String imageUrl;
  final String title;
  final String desc;

  ServicesDetailsModel(this.imageUrl, this.title, this.desc);
}

List<ServicesDetailsModel> servieesList = [
  ServicesDetailsModel(
      'https://static.wixstatic.com/media/d662f4_d8c44405c70d4ac68e6cde147f86b219~mv2.png/v1/fill/w_316,h_316,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/d662f4_d8c44405c70d4ac68e6cde147f86b219~mv2.png',
      'WEBSITE DEVELOPMENT',
      "Need a website that doesn't look like it's from the 90s? Let us help you create a website or redesign one that stands out from the competition."),
  ServicesDetailsModel(
      'https://static.wixstatic.com/media/d662f4_d0e4129ec3f846459c9711a2b1408418~mv2.png/v1/fill/w_316,h_316,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3d%20website%20redesign%20(4).png',
      'SEARCH ENGINE OPTIOMISATION',
      'Is your website getting lost in the sea of search results? Our SEO services can help improve your ranking and drive more traffic to your site.'),
  ServicesDetailsModel(
      'https://static.wixstatic.com/media/d662f4_ea45196eb9424c0a86be06e7e9d17131~mv2.png/v1/fill/w_316,h_316,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3d%20website%20redesign%20(3).png',
      'BLOG AND ARTICLE WRITING',
      "If your blog posts are putting people to sleep, it's time to call in the experts. Let us help you create content that's both informative and engaging.")
];
