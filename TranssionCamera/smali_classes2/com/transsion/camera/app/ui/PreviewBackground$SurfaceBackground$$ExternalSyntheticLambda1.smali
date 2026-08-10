.class public final synthetic Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    iget v1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->$r8$lambda$Z_uuPVuKdRKECZSVBfiXY1gJr4Q(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;II)V

    return-void
.end method
