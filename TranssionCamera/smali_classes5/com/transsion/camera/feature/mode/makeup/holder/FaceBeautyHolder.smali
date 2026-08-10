.class public Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;
.super Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
.source "FaceBeautyHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sBlackIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIconView:Landroid/widget/ImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$YS2HphX1u_yGruoltBZalGXWnNc(Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->lambda$bindHolder$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->sBlackIconMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;-><init>(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    .line 41
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->mu_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic lambda$bindHolder$0()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;IIZZ)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->titleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-ne p2, p3, :cond_0

    .line 50
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 51
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 54
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mMainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 63
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 64
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    if-eqz p4, :cond_1

    .line 67
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateListBlack:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    :goto_1
    iget p2, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->drawableId:I

    if-lez p2, :cond_4

    if-eqz p4, :cond_3

    .line 73
    sget-object p3, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->sBlackIconMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_2

    .line 75
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    iget p3, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->drawableId:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 80
    :cond_3
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_4
    :goto_2
    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    if-nez p1, :cond_5

    if-eqz p5, :cond_5

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mDisableStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->mIconView:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_disable:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public bridge synthetic bindHolder(Ljava/lang/Object;IIZZ)V
    .locals 0

    .line 18
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;->bindHolder(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;IIZZ)V

    return-void
.end method
