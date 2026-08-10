.class public final synthetic Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

.field public final synthetic f$1:Landroid/opengl/EGLContext;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;->f$1:Landroid/opengl/EGLContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;->f$1:Landroid/opengl/EGLContext;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->$r8$lambda$OoRGYXQYsF8Wf8H3hrDEHuwHVhQ(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V

    return-void
.end method
