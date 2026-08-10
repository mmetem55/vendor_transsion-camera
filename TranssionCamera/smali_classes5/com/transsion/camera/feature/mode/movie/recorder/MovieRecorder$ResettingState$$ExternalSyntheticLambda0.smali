.class public final synthetic Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->releaseRenderResource()V

    return-void
.end method
