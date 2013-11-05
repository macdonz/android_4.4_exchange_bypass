.class public Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "zulu"

    .prologue
    .line 419
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 420
    #p0=(Reference);
    new-instance v0, Landroid/text/format/Time;

    #v0=(UninitRef);
    const-string v1, "UTC"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 421
    return-void
.end method
