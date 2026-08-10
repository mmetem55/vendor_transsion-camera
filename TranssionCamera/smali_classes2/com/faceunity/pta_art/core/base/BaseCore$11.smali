.class Lcom/faceunity/pta_art/core/base/BaseCore$11;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "BaseCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->itemUnBindRunnable(Ljava/lang/String;II)Lcom/faceunity/pta_art/core/base/Task;
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

    .line 588
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$itemHandle:I

    iput p4, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$controllerItem:I

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 591
    iget v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$itemHandle:I

    if-gtz v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-static {}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily fuUnBindItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$itemHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    iget v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$controllerItem:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$11;->val$itemHandle:I

    aput p0, v1, v2

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    return-void
.end method
