.class Lcom/faceunity/pta_art/core/AvatarHandle$2;
.super Ljava/lang/Object;
.source "AvatarHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/AvatarHandle;->setAvatar(Lcom/faceunity/pta_art/entity/AvatarPTA;ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

.field final synthetic val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field final synthetic val$completeListener:Ljava/lang/Runnable;

.field final synthetic val$currentModeId:I

.field final synthetic val$needToReload:Z


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/AvatarHandle;IZLcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    iput p2, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$currentModeId:I

    iput-boolean p3, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$needToReload:Z

    iput-object p4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object p5, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$completeListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    invoke-static {}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "lily setAvatar begin "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$currentModeId:I

    invoke-static {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isNeedToBody(I)Z

    move-result v0

    .line 73
    iget v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$currentModeId:I

    invoke-static {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isNeedToDanceExpression(I)Z

    move-result v1

    .line 74
    iget v2, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$currentModeId:I

    invoke-static {v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isNeedToSoundEffect(I)Z

    move-result v2

    .line 75
    invoke-static {}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReload = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$needToReload:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",needToBody = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-nez v3, :cond_0

    new-instance v3, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-direct {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>()V

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyebrowFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyelashFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getPupilFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getFacemakeFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBodyFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    .line 88
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getClothesFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2400(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    .line 89
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getShoeFile()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2600(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    .line 91
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 92
    invoke-static {}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar loadItem maskItem isCustomAvatar is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iget-boolean v7, v7, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , getHeadFile is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v6

    invoke-virtual {v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairFile()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$avatar:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iget-boolean v9, v8, Lcom/faceunity/pta_art/entity/AvatarPTA;->isCustomAvatar:Z

    invoke-virtual {v8}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHeadFile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v9, v8}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMask(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7, v5}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$2900(Lcom/faceunity/pta_art/core/AvatarHandle;)[Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object v9

    xor-int/lit8 v10, v0, 0x1

    invoke-static {v4, v6, v9, v10}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3000(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v4

    invoke-virtual {v3, v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionFile(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3200(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v1

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3300(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/core/base/FUItem;Ljava/lang/String;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3400(Lcom/faceunity/pta_art/core/AvatarHandle;)I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [D

    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v4

    iget v4, v4, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    int-to-double v9, v4

    aput-wide v9, v1, v7

    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v4

    iget v4, v4, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    int-to-double v6, v4

    aput-wide v6, v1, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v5}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1100(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    iget v5, v5, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    int-to-double v5, v5

    aput-wide v5, v1, v4

    iget-object v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v4}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1300(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v4

    iget v4, v4, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    int-to-double v4, v4

    aput-wide v4, v1, v8

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v5}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$1500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/FUItem;

    move-result-object v5

    iget v5, v5, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    int-to-double v5, v5

    aput-wide v5, v1, v4

    const-string v4, "facebeauty_order"

    invoke-static {v0, v4, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 108
    invoke-virtual {v3, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSoundEffectId(Z)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v1}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3500(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object v1

    const-string v2, "switchSoundEffect"

    invoke-virtual {v1, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->dequeueAfterDrawEvent(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v1}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3700(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object v1

    new-instance v4, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/faceunity/pta_art/core/AvatarHandle$2$1;-><init>(Lcom/faceunity/pta_art/core/AvatarHandle$2;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueAfterDrawEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 116
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0, v3}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3800(Lcom/faceunity/pta_art/core/AvatarHandle;Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    .line 117
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->val$completeListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$2;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$3900(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object v0

    new-instance v1, Lcom/faceunity/pta_art/core/AvatarHandle$2$2;

    const-string v2, "setAvatarDone"

    invoke-direct {v1, p0, v2}, Lcom/faceunity/pta_art/core/AvatarHandle$2$2;-><init>(Lcom/faceunity/pta_art/core/AvatarHandle$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 125
    :cond_3
    invoke-static {}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "lily setAvatar end "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
