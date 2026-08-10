.class final Lcom/unity3d/player/UnityPlayer$26$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$26;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$26;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$26;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$26$1;->a:Lcom/unity3d/player/UnityPlayer$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$26$1;->a:Lcom/unity3d/player/UnityPlayer$26;

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$26;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->access$1400(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
