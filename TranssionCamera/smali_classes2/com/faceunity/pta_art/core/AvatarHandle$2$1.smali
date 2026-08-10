.class Lcom/faceunity/pta_art/core/AvatarHandle$2$1;
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

.field final synthetic val$soundEffectId:I


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/AvatarHandle$2;Ljava/lang/String;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;->this$1:Lcom/faceunity/pta_art/core/AvatarHandle$2;

    iput p3, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;->val$soundEffectId:I

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;->this$1:Lcom/faceunity/pta_art/core/AvatarHandle$2;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3600(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;

    move-result-object v0

    iget p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;->val$soundEffectId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;->switchSoundEffect(I)V

    return-void
.end method
