.class public final synthetic Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->$r8$lambda$V9fnyL8rQz84EKhSg5IV72kBR2I(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
