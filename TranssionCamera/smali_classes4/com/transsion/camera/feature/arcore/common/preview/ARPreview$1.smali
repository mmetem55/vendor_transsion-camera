.class Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;
.super Ljava/lang/Object;
.source "ARPreview.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviewAspectRatio:D

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSameAspectRatio(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPreviewSize(II)V
    .locals 4

    int-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 102
    iget-wide v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->updatePreviewLayout()V

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private updatePreviewLayout()V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    .line 117
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto/16 :goto_1

    .line 120
    :cond_0
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v2

    goto :goto_1

    .line 122
    :cond_1
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$500(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v5}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    goto :goto_1

    .line 124
    :cond_2
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v2

    goto :goto_1

    .line 126
    :cond_3
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 128
    :cond_4
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide v6, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 130
    :cond_5
    iget-wide v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    const-wide v6, 0x4000e38e38e38e39L    # 2.111111111111111

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->isSameAspectRatio(DD)Z

    goto :goto_0

    :goto_1
    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewLayout layoutParams topMargin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bottomMargin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewLayout previewRect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mTopBarHeight:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    .line 142
    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$400(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mBottomBarHeight:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$500(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mPreviewAspectRatio:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->mPreviewAspectRatio:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Landroid/util/Size;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$1;->setPreviewSize(II)V

    return-void
.end method
