.class public Lcom/android/mail/FormattedDateBuilder;
.super Ljava/lang/Object;
.source "FormattedDateBuilder.java"


# instance fields
.field private dateFormatter:Ljava/util/Formatter;

.field private mContext:Landroid/content/Context;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    .line 40
    new-instance v0, Ljava/util/Formatter;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    .line 41
    return-void
.end method

.method private formatLongDayAndDate(J)Ljava/lang/CharSequence;
    .locals 7
    .parameter "when"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    #v1=(Reference);
    const v6, 0x80016

    #v6=(Integer);
    move-wide v2, p1

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, p1

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 66
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatLongTime(J)Ljava/lang/CharSequence;
    .locals 7
    .parameter "when"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    #v1=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    move-wide v2, p1

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, p1

    #v4=(LongLo);v5=(LongHi);
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 73
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isYesterday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 80
    new-instance v3, Landroid/text/format/Time;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 81
    .local v3, time:Landroid/text/format/Time;
    #v3=(Reference);
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 83
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 84
    .local v2, thenYear:I
    #v2=(Integer);
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 85
    .local v0, thenMonth:I
    #v0=(Integer);
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 87
    .local v1, thenMonthDay:I
    #v1=(Integer);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 88
    iget v4, v3, Landroid/text/format/Time;->year:I

    #v4=(Integer);
    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    #v4=(Boolean);
    return v4

    :cond_0
    #v4=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0
.end method


# virtual methods
.method public formatLongDateTime(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "when"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 48
    #v4=(Null);
    iget-object v1, p0, Lcom/android/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 51
    const v1, 0x7f0a012f

    #v1=(Integer);
    new-array v2, v5, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/FormattedDateBuilder;->formatLongTime(J)Ljava/lang/CharSequence;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    #v1=(Reference);
    return-object v1

    .line 52
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    invoke-static {p1, p2}, Lcom/android/mail/FormattedDateBuilder;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const v1, 0x7f0a0130

    #v1=(Integer);
    new-array v2, v5, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/FormattedDateBuilder;->formatLongTime(J)Ljava/lang/CharSequence;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0

    .line 56
    :cond_1
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);
    const v1, 0x7f0a012e

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/FormattedDateBuilder;->formatLongDayAndDate(J)Ljava/lang/CharSequence;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v4

    invoke-direct {p0, p1, p2}, Lcom/android/mail/FormattedDateBuilder;->formatLongTime(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public formatShortDate(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "when"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
