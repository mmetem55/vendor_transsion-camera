.class public final Lcom/google/android/gms/internal/measurement/zzbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.0"


# static fields
.field public static final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    const/high16 v3, 0x2000000

    :cond_0
    sput v3, Lcom/google/android/gms/internal/measurement/zzbs;->zza:I

    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
