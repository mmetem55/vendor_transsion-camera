.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$eV1tr5YzJAAn6m5fPr_5aZIPHKM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->lambda$bindHolder$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 911
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 912
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 913
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 914
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    .line 915
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    .line 916
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$bindHolder$0()V
    .locals 1

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 3

    .line 928
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    if-eqz v0, :cond_4

    .line 929
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    .line 930
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$2000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_1

    .line 939
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$2000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$2000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 944
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_3

    .line 946
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 947
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 950
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 953
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

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
