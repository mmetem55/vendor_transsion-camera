.class public final synthetic Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->$r8$lambda$B7lHrRQUcdK-V0hGFuBg2JofJko(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V

    return-void
.end method
