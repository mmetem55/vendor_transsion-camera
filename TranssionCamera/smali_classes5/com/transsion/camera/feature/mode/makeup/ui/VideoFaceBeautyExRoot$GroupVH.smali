.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .locals 1

    .line 839
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 840
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 841
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 842
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    .line 843
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    .line 844
    sget p0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_shadow_color:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 5

    .line 854
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-eqz v0, :cond_8

    .line 855
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 856
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 858
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->blackExpandDrawableId:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->expandDrawableId:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 865
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 866
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 867
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 868
    instance-of v4, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    if-eqz v4, :cond_2

    .line 869
    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    .line 870
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    .line 880
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 883
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_5

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 888
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 890
    :goto_3
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    if-lez v0, :cond_8

    if-eqz p2, :cond_7

    .line 892
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object p2

    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 893
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_6

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 896
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 899
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public getType()I
    .locals 0

    const p0, 0xfa01

    return p0
.end method
