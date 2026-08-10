.class final Lcom/unity3d/player/UnityPlayer$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->ShowSplashAdsScreen()V
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$25;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$25;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1400(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$25;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1400(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$25;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$1400(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unity3d/player/k;->a()V

    :cond_0
    return-void
.end method
