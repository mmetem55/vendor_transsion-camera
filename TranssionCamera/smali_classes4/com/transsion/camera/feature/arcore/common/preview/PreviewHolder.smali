.class public final Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;
.super Ljava/lang/Object;
.source "PreviewHolder.java"


# instance fields
.field public final mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

.field public final mPreviewCover:Landroid/widget/ImageView;

.field public final mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Landroid/widget/ImageView;Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mPreviewCover:Landroid/widget/ImageView;

    .line 15
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    return-void
.end method
