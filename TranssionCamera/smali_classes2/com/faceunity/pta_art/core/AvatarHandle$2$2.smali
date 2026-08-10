.class Lcom/faceunity/pta_art/core/AvatarHandle$2$2;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "AvatarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/AvatarHandle$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/faceunity/pta_art/core/AvatarHandle$2;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/AvatarHandle$2;Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$2;->this$1:Lcom/faceunity/pta_art/core/AvatarHandle$2;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$2;->this$1:Lcom/faceunity/pta_art/core/AvatarHandle$2;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$completeListener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
