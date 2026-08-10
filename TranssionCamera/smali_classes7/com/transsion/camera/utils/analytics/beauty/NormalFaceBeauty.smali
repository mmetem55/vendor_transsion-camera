.class public Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "NormalFaceBeauty.java"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method protected getValue(Ljava/lang/String;)I
    .locals 2

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string p0, "ai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string p0, "4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x1b

    return p0

    :pswitch_2
    const/16 p0, 0x21

    return p0

    :pswitch_3
    const/16 p0, 0x20

    return p0

    :pswitch_4
    const/16 p0, 0x1f

    return p0

    :pswitch_5
    const/16 p0, 0x1e

    return p0

    :pswitch_6
    const/16 p0, 0x1d

    return p0

    :pswitch_7
    const/16 p0, 0x1c

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_7
        0x32 -> :sswitch_6
        0x33 -> :sswitch_5
        0x34 -> :sswitch_4
        0x35 -> :sswitch_3
        0x36 -> :sswitch_2
        0xc28 -> :sswitch_1
        0x1ad6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected getValue()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-object p0
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method
