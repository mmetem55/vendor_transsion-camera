.class public Lcom/transsion/camera/utils/analytics/beauty/SlimBody;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "SlimBody.java"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;

.field private mMode:I

.field private mModeFlag:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slimbody_custom_"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method protected getValue(Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p1

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "slimbody_custom_0_0_0_1_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v19, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "slimbody_custom_0_0_0_0_1_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v19, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "slimbody_custom_0_0_0_0_0_1_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v19, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "slimbody_custom_0_0_0_0_0_0_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v19, v5

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "slimbody_custom_1_0_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v19, v6

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "slimbody_sb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v19, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "slimbody_sb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v19, v8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "slimbody_sb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    move/from16 v19, v9

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "slimbody_sb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v10

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "slimbody_fb_6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v19, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "slimbody_fb_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v19, v12

    goto :goto_0

    :sswitch_b
    const-string v1, "slimbody_fb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v19, v13

    goto :goto_0

    :sswitch_c
    const-string v1, "slimbody_fb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v19, v14

    goto :goto_0

    :sswitch_d
    const-string v1, "slimbody_fb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v19, v15

    goto :goto_0

    :sswitch_e
    const-string v1, "slimbody_fb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v19, v16

    goto :goto_0

    :sswitch_f
    const-string v1, "slimbody_custom_0_1_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v19, v17

    goto :goto_0

    :sswitch_10
    const-string v1, "slimbody_custom_0_0_1_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v19, v18

    :goto_0
    packed-switch v19, :pswitch_data_0

    return v18

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v2

    :pswitch_3
    const/16 v0, 0x11

    return v0

    :pswitch_4
    return v7

    :pswitch_5
    return v8

    :pswitch_6
    return v9

    :pswitch_7
    return v10

    :pswitch_8
    return v11

    :pswitch_9
    return v12

    :pswitch_a
    return v13

    :pswitch_b
    return v14

    :pswitch_c
    return v15

    :pswitch_d
    return v16

    :pswitch_e
    return v17

    :pswitch_f
    return v6

    :pswitch_10
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7e528ad7 -> :sswitch_10
        -0x7db24717 -> :sswitch_f
        -0x3c76c6b2 -> :sswitch_e
        -0x3c76c6b1 -> :sswitch_d
        -0x3c76c6b0 -> :sswitch_c
        -0x3c76c6af -> :sswitch_b
        -0x3c76c6ae -> :sswitch_a
        -0x3c76c6ad -> :sswitch_9
        -0x3c70dddf -> :sswitch_8
        -0x3c70ddde -> :sswitch_7
        -0x3c70dddd -> :sswitch_6
        -0x3c70dddc -> :sswitch_5
        -0x2413f357 -> :sswitch_4
        -0x1296f9d7 -> :sswitch_3
        -0x1296f617 -> :sswitch_2
        -0x1288e257 -> :sswitch_1
        0x224f4169 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method protected getValue()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "slimbody_sb_"

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slimbody_fb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBodySlim()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setButtPlump()V
    .locals 1

    const/16 v0, 0x10

    .line 91
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrink()V
    .locals 1

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegLengthen()V
    .locals 1

    const/16 v0, 0x40

    .line 99
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegSlim()V
    .locals 1

    const/16 v0, 0x20

    .line 95
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    return-void
.end method

.method public setShoulderSlim()V
    .locals 1

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setWaistSlim()V
    .locals 1

    const/16 v0, 0x8

    .line 87
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method
