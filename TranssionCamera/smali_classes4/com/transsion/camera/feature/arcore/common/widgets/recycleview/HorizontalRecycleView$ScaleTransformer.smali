.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;
.super Ljava/lang/Object;
.source "HorizontalRecycleView.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCALE:F = 1.75f

.field private static final DEFAULT_MIN_SCALE:F = 1.0f


# instance fields
.field private mMaxScale:F

.field private mMinScale:F

.field private mPivotX:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

.field private mPivotY:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 792
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 793
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMaxScale:F

    .line 794
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->CENTER:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$X;->create()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotX:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    .line 795
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$Y;->CENTER:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$Y;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot$Y;->create()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotY:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    return-void
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;F)F
    .locals 0

    .line 780
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    return p1
.end method

.method static synthetic access$2302(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;F)F
    .locals 0

    .line 780
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMaxScale:F

    return p1
.end method

.method static synthetic access$2402(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotX:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotY:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    return-object p1
.end method


# virtual methods
.method protected calculateScale(F)F
    .locals 3

    .line 816
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 818
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    return p0

    .line 820
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMinScale:F

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mMaxScale:F

    sub-float/2addr p0, v1

    sub-float/2addr v0, p1

    mul-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1
.end method

.method public transformItem(Landroid/view/View;FZI)V
    .locals 4

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotX:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;->setOn(Landroid/view/View;)V

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->mPivotY:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer$Pivot;->setOn(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScaleTransformer;->calculateScale(F)F

    move-result p0

    const/high16 v0, 0x3fe00000    # 1.75f

    cmpl-float v1, v0, p0

    if-nez v1, :cond_0

    .line 804
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transformItem scale max . i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , stride is "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , View is "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const/high16 p2, 0x42700000    # 60.0f

    if-eqz p3, :cond_1

    sub-float p3, p0, v0

    mul-float/2addr p3, p2

    .line 807
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr v0, p0

    mul-float/2addr v0, p2

    .line 809
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 811
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 812
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
