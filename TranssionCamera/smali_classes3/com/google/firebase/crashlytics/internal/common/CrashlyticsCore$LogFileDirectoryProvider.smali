.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogFileDirectoryProvider"
.end annotation


# static fields
.field private static final LOG_FILES_DIR:Ljava/lang/String; = "log-files"


# instance fields
.field private final rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    return-void
.end method


# virtual methods
.method public getLogFileDir()Ljava/io/File;
    .locals 2

    .line 508
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "log-files"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
