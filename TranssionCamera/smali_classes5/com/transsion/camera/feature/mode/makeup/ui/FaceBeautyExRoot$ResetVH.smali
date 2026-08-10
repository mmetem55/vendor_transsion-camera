.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 1038
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 1039
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 1040
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1041
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    .line 1042
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    .line 1043
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 2

    .line 1053
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    if-eqz v0, :cond_3

    .line 1054
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    if-eqz p2, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1060
    :goto_0
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    if-lez v0, :cond_3

    if-eqz p2, :cond_2

    .line 1062
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1800()Ljava/util/Map;

    move-result-object p2

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 1063
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1064
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1066
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1069
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getType()I
    .locals 0

    const p0, 0xfa04

    return p0
.end method
