.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemChangeListener(II)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x6

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 584
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setShoeIndex(I)V

    goto/16 :goto_5

    .line 571
    :pswitch_1
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMaleNewBodyPos()I

    move-result p1

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setClothesIndex(I)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setShoeIndex(I)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-nez v0, :cond_6

    if-ne p2, p1, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setMaleNewBodyFile(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setMaleNewBodyFile(Ljava/lang/Boolean;)V

    .line 580
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "11"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 558
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1502(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHatIndex(I)V

    .line 560
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    .line 561
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result v2

    invoke-static {v1, p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getResourceLength(II)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 562
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result v2

    if-eq p2, v2, :cond_1

    invoke-static {v0, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultHairIndex(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2202(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    goto :goto_1

    .line 565
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2202(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 567
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairIndex(I)V

    goto/16 :goto_5

    .line 547
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1902(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesIndex(I)V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    invoke-static {v2, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    .line 550
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {v3, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2102(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    goto :goto_2

    .line 553
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2102(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 555
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2100(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBeardIndex(I)V

    goto/16 :goto_5

    .line 544
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setFacemakeIndex(I)V

    goto/16 :goto_5

    .line 541
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setPupilIndex(I)V

    goto/16 :goto_5

    .line 538
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setEyelashIndex(I)V

    goto/16 :goto_5

    .line 535
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setEyebrowIndex(I)V

    goto/16 :goto_5

    .line 524
    :pswitch_8
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1802(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setBeardIndex(I)V

    .line 526
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    invoke-static {v3, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    .line 527
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1900(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {v2, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2002(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    goto :goto_3

    .line 530
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1900(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2002(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 532
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setGlassesIndex(I)V

    goto :goto_5

    .line 512
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1402(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairIndex(I)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getMutexFlag(III)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1702(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    goto :goto_4

    .line 518
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1702(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I

    .line 520
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$1700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHatIndex(I)V

    .line 588
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    iget-object p2, p1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
