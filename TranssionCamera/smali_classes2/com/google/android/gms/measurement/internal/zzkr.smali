.class public final Lcom/google/android/gms/measurement/internal/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzkq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzkq;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zza:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzd:Ljava/lang/Long;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zze:Ljava/lang/String;

    const/4 v1, 0x6

    .line 7
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkq;->zzg:Ljava/lang/Double;

    const/16 v0, 0x8

    .line 9
    invoke-static {p1, v0, p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v6, v0

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move v5, v1

    move-wide v7, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 15
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkq;

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/google/android/gms/measurement/internal/zzkq;

    return-object p0
.end method
