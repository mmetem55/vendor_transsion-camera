.class Lcom/faceunity/pta_art/core/base/BaseCore$10;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "BaseCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->itemBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$controllerItem:I

.field final synthetic val$itemHandle:I


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;II)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$itemHandle:I

    iput p4, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$controllerItem:I

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 578
    iget v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$itemHandle:I

    if-gtz v0, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-static {}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily fuBindItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$itemHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 582
    iget v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$controllerItem:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$10;->val$itemHandle:I

    aput p0, v1, v2

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    return-void
.end method
