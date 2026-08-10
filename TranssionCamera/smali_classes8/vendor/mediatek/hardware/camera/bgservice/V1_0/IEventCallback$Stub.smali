.class public abstract Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IEventCallback.java"

# interfaces
.implements Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 127
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 128
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5bt
        0x6bt
        0x2bt
        -0x65t
        0x50t
        0x65t
        -0x2at
        -0x1ct
        0x11t
        0x68t
        -0x61t
        0x2ct
        -0x21t
        0x45t
        -0x5t
        -0x27t
        0x72t
        -0x7dt
        -0x7bt
        0x6dt
        0x35t
        0x4t
        -0x6ft
        0x3at
        0x2et
        0x1ct
        0x75t
        0x16t
        0x1ct
        0xdt
        0x18t
        -0x52t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.mediatek.hardware.camera.bgservice@1.0::IEventCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.mediatek.hardware.camera.bgservice@1.0::IEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 135
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_16

    .line 302
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    .line 292
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 295
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_8

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 279
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 282
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 284
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 285
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 267
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 270
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->ping()V

    .line 272
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 273
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_16

    .line 260
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-nez v2, :cond_9

    .line 250
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 253
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_8

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    .line 218
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 223
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 226
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 227
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 228
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 229
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 230
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v2, p2, :cond_d

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 234
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_c

    .line 235
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    .line 239
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 236
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-wide/16 v0, 0x0

    .line 243
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 244
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    .line 205
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    .line 208
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 211
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_8

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    .line 191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    .line 194
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 197
    invoke-virtual {p0, p1, p2}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    if-eqz v3, :cond_13

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    .line 181
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 184
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :sswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14

    goto :goto_7

    :cond_14
    move v3, v2

    :goto_7
    if-eqz v3, :cond_15

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_8

    :cond_15
    const-string p1, "vendor.mediatek.hardware.camera.bgservice@1.0::IEventCallback"

    .line 165
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 169
    invoke-interface {p0, p1, p4, p2}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback;->onCompleted(III)Z

    move-result p0

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 171
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_16
    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.mediatek.hardware.camera.bgservice@1.0::IEventCallback"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
