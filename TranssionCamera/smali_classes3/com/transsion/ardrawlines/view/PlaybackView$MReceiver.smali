.class Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/view/PlaybackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MReceiver"
.end annotation


# instance fields
.field paused:Z

.field final synthetic this$0:Lcom/transsion/ardrawlines/view/PlaybackView;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/view/PlaybackView;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->paused:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-static {p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-static {p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-static {p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->paused:Z

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.deskclock.ALARM_DONE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-static {p1}, Lcom/transsion/ardrawlines/view/PlaybackView;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->paused:Z

    if-eqz p1, :cond_1

    .line 360
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/PlaybackView$MReceiver;->this$0:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-static {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->-$$Nest$fgetmMediaPlayer(Lcom/transsion/ardrawlines/view/PlaybackView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    :goto_0
    return-void
.end method
