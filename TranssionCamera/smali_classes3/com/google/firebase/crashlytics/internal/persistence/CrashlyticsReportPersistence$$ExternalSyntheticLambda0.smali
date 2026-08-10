.class public final synthetic Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->$r8$lambda$ZpGuBbpK_q5z4ay4qMWsTit4tI0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
