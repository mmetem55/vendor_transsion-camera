.class public Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;
.super Ljava/lang/Object;
.source "SlimBodyHelper.java"


# static fields
.field private static final PROPERTY_CAMERA_SKIN:Ljava/lang/String; = "debug.vendor.sys.oobe.camera_skin"


# instance fields
.field private mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private final mFaceAttributeSupport:Z

.field private mGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mFaceAttributeSupport:Z

    .line 46
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_gender_attribute_value"

    const-string v1, "1"

    .line 45
    invoke-virtual {p2, v0, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mu_slimbody_custom"

    .line 49
    invoke-virtual {p2, v1, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 52
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-void
.end method

.method private getDefaultSkin()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 98
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mFaceAttributeSupport:Z

    const-string v1, "white"

    if-eqz v0, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_1

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_0
    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    return-object p0

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "{\"bodySlim\":0,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_2
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":25,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    return-object p0

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSkin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    :cond_4
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0
.end method

.method private getProcessInternal()I
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x64

    goto :goto_0

    .line 208
    :pswitch_0
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    goto :goto_0

    .line 205
    :pswitch_1
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    goto :goto_0

    .line 202
    :pswitch_2
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    goto :goto_0

    .line 199
    :pswitch_3
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    goto :goto_0

    .line 196
    :pswitch_4
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    goto :goto_0

    .line 193
    :pswitch_5
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    goto :goto_0

    .line 190
    :pswitch_6
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    goto :goto_0

    .line 187
    :pswitch_7
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    goto :goto_0

    .line 184
    :pswitch_8
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    goto :goto_0

    .line 181
    :pswitch_9
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    goto :goto_0

    .line 178
    :pswitch_a
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
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

.method private updateProcessInternal(I)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    goto :goto_0

    .line 151
    :pswitch_1
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    goto :goto_0

    .line 148
    :pswitch_2
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    goto :goto_0

    .line 145
    :pswitch_3
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    goto :goto_0

    .line 142
    :pswitch_4
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    goto :goto_0

    .line 139
    :pswitch_5
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    goto :goto_0

    .line 136
    :pswitch_6
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    goto :goto_0

    .line 133
    :pswitch_7
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    goto :goto_0

    .line 130
    :pswitch_8
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    goto :goto_0

    .line 127
    :pswitch_9
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    goto :goto_0

    .line 124
    :pswitch_a
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
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


# virtual methods
.method public defaultCustom()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFeatureId()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    return p0
.end method

.method public getProgress(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getProcessInternal()I

    move-result p0

    return p0
.end method

.method public restoreDefault(I)Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 161
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 162
    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 163
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mu_slimbody_custom"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    :cond_0
    return-void
.end method

.method public updateFeatureId(I)Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 107
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mu_slimbody_custom"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public updateProgress(I)Ljava/lang/String;
    .locals 3

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateProcessInternal(I)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_mu_slimbody_custom"

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method
