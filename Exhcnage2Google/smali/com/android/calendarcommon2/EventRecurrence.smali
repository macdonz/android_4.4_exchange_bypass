.class public Lcom/android/calendarcommon2/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/EventRecurrence$1;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseCount;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;,
        Lcom/android/calendarcommon2/EventRecurrence$PartParser;,
        Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendarcommon2/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    #v3=(Null);
    const-string v0, "EventRecur"

    #v0=(Reference);
    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "FREQ"

    #v1=(Reference);
    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseCount;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseCount;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;

    #v2=(UninitRef);
    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x1

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x2

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x4

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x8

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x10

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x20

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x40

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 897
    #p0=(Reference);
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    #v2=(Reference);
    aget v0, v2, p2

    .line 312
    .local v0, n:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v2, v2, p2

    #v2=(Integer);
    invoke-static {v2}, Lcom/android/calendarcommon2/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, str:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 298
    if-lez p2, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 p2, p2, -0x1

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, p2, :cond_0

    .line 302
    aget v1, p3, v0

    #v1=(Integer);
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ","

    #v1=(Reference);
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    #v1=(Conflicted);
    aget v1, p3, p2

    #v1=(Integer);
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .end local v0           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .locals 4
    .parameter "array1"
    .parameter "count1"
    .parameter "array2"
    .parameter "count2"

    .prologue
    const/4 v1, 0x0

    .line 456
    #v1=(Null);
    if-eq p1, p3, :cond_1

    .line 465
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 460
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ge v0, p1, :cond_2

    .line 461
    aget v2, p0, v0

    #v2=(Integer);
    aget v3, p2, v0

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .parameter "day"

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "bad day argument: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 277
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const-string v0, "SU"

    .line 289
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 279
    :sswitch_1
    #v0=(Uninit);
    const-string v0, "MO"

    #v0=(Reference);
    goto :goto_0

    .line 281
    :sswitch_2
    #v0=(Uninit);
    const-string v0, "TU"

    #v0=(Reference);
    goto :goto_0

    .line 283
    :sswitch_3
    #v0=(Uninit);
    const-string v0, "WE"

    #v0=(Reference);
    goto :goto_0

    .line 285
    :sswitch_4
    #v0=(Uninit);
    const-string v0, "TH"

    #v0=(Reference);
    goto :goto_0

    .line 287
    :sswitch_5
    #v0=(Uninit);
    const-string v0, "FR"

    #v0=(Reference);
    goto :goto_0

    .line 289
    :sswitch_6
    #v0=(Uninit);
    const-string v0, "SA"

    #v0=(Reference);
    goto :goto_0

    .line 275
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 470
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v1

    .line 473
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    instance-of v3, p1, Lcom/android/calendarcommon2/EventRecurrence;

    #v3=(Boolean);
    if-nez v3, :cond_2

    move v1, v2

    .line 474
    #v1=(Null);
    goto :goto_0

    :cond_2
    #v1=(One);
    move-object v0, p1

    .line 477
    #v0=(Reference);
    check-cast v0, Lcom/android/calendarcommon2/EventRecurrence;

    .line 478
    .local v0, er:Lcom/android/calendarcommon2/EventRecurrence;
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    #v3=(Reference);
    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_3

    :goto_1
    #v3=(Conflicted);v4=(Conflicted);
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    #v4=(Integer);
    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    #v3=(Reference);
    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    #v3=(Conflicted);v4=(Conflicted);
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    #v3=(Integer);
    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    #v4=(Integer);
    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    #v5=(Reference);
    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    #v6=(Integer);
    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_3
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto/16 :goto_0

    :cond_4
    #v1=(One);v3=(Reference);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    #v4=(Reference);
    invoke-static {v3, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    #v3=(Integer);
    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_5
    #v3=(Reference);v4=(Integer);
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    goto/16 :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v2, s:Ljava/lang/StringBuilder;
    #v2=(Reference);
    const-string v3, "FREQ="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 351
    :goto_0
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    #v3=(Reference);
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 352
    const-string v3, ";UNTIL="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    #v3=(Conflicted);
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    #v3=(Integer);
    if-eqz v3, :cond_1

    .line 357
    const-string v3, ";COUNT="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 362
    const-string v3, ";INTERVAL="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_2
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 367
    const-string v3, ";WKST="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    #v3=(Integer);
    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    #v3=(Conflicted);
    const-string v3, ";BYSECOND="

    #v3=(Reference);
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    #v5=(Reference);
    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 372
    const-string v3, ";BYMINUTE="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 373
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 376
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 377
    .local v0, count:I
    #v0=(Integer);
    if-lez v0, :cond_5

    .line 378
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v0, v0, -0x1

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);
    if-ge v1, v0, :cond_4

    .line 381
    invoke-direct {p0, v2, v1}, Lcom/android/calendarcommon2/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 382
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v3=(Integer);v4=(Uninit);v5=(Uninit);
    const-string v3, "SECONDLY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :pswitch_1
    #v3=(Integer);
    const-string v3, "MINUTELY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :pswitch_2
    #v3=(Integer);
    const-string v3, "HOURLY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 338
    :pswitch_3
    #v3=(Integer);
    const-string v3, "DAILY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 341
    :pswitch_4
    #v3=(Integer);
    const-string v3, "WEEKLY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 344
    :pswitch_5
    #v3=(Integer);
    const-string v3, "MONTHLY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    :pswitch_6
    #v3=(Integer);
    const-string v3, "YEARLY"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 384
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_4
    #v0=(Integer);v1=(Integer);v4=(Integer);v5=(Reference);
    invoke-direct {p0, v2, v0}, Lcom/android/calendarcommon2/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 387
    .end local v1           #i:I
    :cond_5
    #v1=(Conflicted);
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string v3, ";BYMONTH="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    const-string v3, ";BYSETPOS="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
