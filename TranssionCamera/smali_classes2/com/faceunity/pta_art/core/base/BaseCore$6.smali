.class Lcom/faceunity/pta_art/core/base/BaseCore$6;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->itemSetParam(Ljava/lang/String;[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:[D


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;[D)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->val$value:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->val$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$6;->val$value:[D

    invoke-static {v0, v1, p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$600(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;[D)V

    return-void
.end method
