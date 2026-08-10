.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterVH"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 964
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;-><init>(Landroid/view/View;)V

    .line 965
    sget p1, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;)Landroid/widget/ImageView;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public bindHolder(Ljava/lang/Object;Z)V
    .locals 1

    .line 975
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    if-eqz v0, :cond_1

    .line 976
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    .line 977
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    .line 979
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->blackDrawableId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 981
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getType()I
    .locals 0

    const p0, 0xfa05

    return p0
.end method
