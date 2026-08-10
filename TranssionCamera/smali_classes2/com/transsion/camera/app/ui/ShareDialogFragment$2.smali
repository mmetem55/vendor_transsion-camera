.class Lcom/transsion/camera/app/ui/ShareDialogFragment$2;
.super Ljava/lang/Object;
.source "ShareDialogFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$2;->this$0:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->access$400(Lcom/transsion/camera/app/ui/ShareDialogFragment;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
