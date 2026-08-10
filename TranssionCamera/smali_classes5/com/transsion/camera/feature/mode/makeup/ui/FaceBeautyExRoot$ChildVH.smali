.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$2ijc-71ZkyEt61YKAFyWXW-5XXU(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->lambda$bindHolder$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 959
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 960
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 961
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 962
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    .line 963
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    .line 964
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$bindHolder$0()V
    .locals 1

    .line 979
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 3

    .line 974
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    if-eqz v0, :cond_4

    .line 975
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    .line 976
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 980
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_1

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 990
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_3

    .line 992
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1800()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 993
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 994
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 996
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 999
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 0

    const p0, 0xfa02

    return p0
.end method
