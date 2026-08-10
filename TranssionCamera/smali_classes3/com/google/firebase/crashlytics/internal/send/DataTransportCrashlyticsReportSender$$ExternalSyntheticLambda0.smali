.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->$r8$lambda$ceNKGaFlE1_IExdHC5OascASr6A(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B

    move-result-object p0

    return-object p0
.end method
