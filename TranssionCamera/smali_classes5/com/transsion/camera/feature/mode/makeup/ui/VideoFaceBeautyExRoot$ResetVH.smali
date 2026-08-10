.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 992
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 993
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 994
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 995
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    .line 996
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    .line 997
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 2

    .line 1007
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    if-eqz v0, :cond_3

    .line 1008
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    if-eqz p2, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1014
    :goto_0
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    if-lez v0, :cond_3

    if-eqz p2, :cond_2

    .line 1016
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object p2

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 1017
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1020
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1023
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->mIconView:Landroid/widget/ImageView;

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
