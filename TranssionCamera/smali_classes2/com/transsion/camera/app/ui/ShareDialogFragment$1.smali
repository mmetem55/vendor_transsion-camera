.class Lcom/transsion/camera/app/ui/ShareDialogFragment$1;
.super Ljava/lang/Object;
.source "ShareDialogFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ShareDialogFragment;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ShareDialogFragment;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$1;->this$0:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$1;->this$0:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->access$300(Lcom/transsion/camera/app/ui/ShareDialogFragment;)Landroid/widget/VideoView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
