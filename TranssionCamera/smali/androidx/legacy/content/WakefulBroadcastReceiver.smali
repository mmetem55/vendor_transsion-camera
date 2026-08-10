.class public abstract Landroidx/legacy/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static final EXTRA_WAKE_LOCK_ID_INTEROP:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 78
    sput v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "androidx.contentpager.content.wakelockid"

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.support.content.wakelockid"

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    sget-object p0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    monitor-exit p0

    return v2

    :cond_1
    const-string v1, "WakefulBroadcastReceiv."

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No active wake lock id #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5

    .line 95
    sget-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 96
    :try_start_0
    sget v1, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    add-int/lit8 v2, v1, 0x1

    .line 97
    sput v2, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 99
    sput v3, Landroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    :cond_0
    const-string v2, "androidx.contentpager.content.wakelockid"

    .line 102
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.support.content.wakelockid"

    .line 103
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 106
    monitor-exit v0

    return-object p0

    :cond_1
    const-string v2, "power"

    .line 109
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "androidx.core:wake:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {p0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/32 v2, 0xea60

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 114
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
