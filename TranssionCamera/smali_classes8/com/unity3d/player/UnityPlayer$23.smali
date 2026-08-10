.class final Lcom/unity3d/player/UnityPlayer$23;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showBlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$23;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$23;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$4400(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
