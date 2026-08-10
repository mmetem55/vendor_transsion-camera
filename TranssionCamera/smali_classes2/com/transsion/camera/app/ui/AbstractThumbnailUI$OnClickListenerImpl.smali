.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "AbstractThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "thumbnail click"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$600(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$600(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
