.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;
.super Ljava/lang/Object;
.source "ThumbnailUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method
