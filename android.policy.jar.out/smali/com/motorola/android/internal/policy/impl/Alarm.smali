.class public final Lcom/motorola/android/internal/policy/impl/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;,
        Lcom/motorola/android/internal/policy/impl/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/internal/policy/impl/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static DM12:Ljava/lang/String;

.field private static DM24:Ljava/lang/String;


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public sidekey:I

.field public silent:Z

.field public snoozed:Z

.field public snoozetime:I

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "E h:mm aa"

    sput-object v0, Lcom/motorola/android/internal/policy/impl/Alarm;->DM12:Ljava/lang/String;

    .line 33
    const-string v0, "E k:mm"

    sput-object v0, Lcom/motorola/android/internal/policy/impl/Alarm;->DM24:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/motorola/android/internal/policy/impl/Alarm$1;

    invoke-direct {v0}, Lcom/motorola/android/internal/policy/impl/Alarm$1;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/policy/impl/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    .line 200
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->enabled:Z

    .line 201
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    .line 202
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    .line 203
    new-instance v1, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 204
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 205
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 206
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    .line 207
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, alertString:Ljava/lang/String;
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozed:Z

    .line 209
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozetime:I

    .line 210
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->sidekey:I

    .line 211
    const-string v1, "silent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    iput-boolean v2, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->silent:Z

    .line 225
    :cond_1
    :goto_2
    return-void

    .end local v0           #alertString:Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 200
    goto :goto_0

    :cond_3
    move v1, v3

    .line 205
    goto :goto_1

    .line 214
    .restart local v0       #alertString:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 221
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->enabled:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    .line 232
    new-instance v0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->silent:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozed:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozetime:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->sidekey:I

    .line 241
    return-void

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v0, v2

    .line 234
    goto :goto_1

    :cond_2
    move v0, v2

    .line 237
    goto :goto_2

    :cond_3
    move v1, v2

    .line 238
    goto :goto_3
.end method

.method private static calculateAlarm(IILcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 331
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 333
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 334
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 337
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 338
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 340
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 341
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 342
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 345
    invoke-virtual {p2, v1}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 351
    .local v0, addDays:I
    if-lez v0, :cond_2

    .line 352
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 353
    :cond_2
    return-object v1
.end method

.method public static calculateNextAlert(Landroid/content/Context;Landroid/database/Cursor;)Lcom/motorola/android/internal/policy/impl/Alarm;
    .locals 13
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move-object v1, v8

    .line 324
    :cond_1
    :goto_0
    return-object v1

    .line 292
    :cond_2
    const/4 v1, 0x0

    .line 293
    .local v1, alarm:Lcom/motorola/android/internal/policy/impl/Alarm;
    const-wide v2, 0x7fffffffffffffffL

    .line 294
    .local v2, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .local v4, now:J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 297
    :cond_3
    new-instance v0, Lcom/motorola/android/internal/policy/impl/Alarm;

    invoke-direct {v0, p1}, Lcom/motorola/android/internal/policy/impl/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 300
    .local v0, a:Lcom/motorola/android/internal/policy/impl/Alarm;
    iget-object v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v9}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 301
    iget-wide v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    .line 302
    iget v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    iget v10, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v11, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-static {v9, v10, v11}, Lcom/motorola/android/internal/policy/impl/Alarm;->calculateAlarm(IILcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 305
    :cond_4
    iget-wide v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    cmp-long v9, v9, v4

    if-gez v9, :cond_6

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 308
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 309
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "enabled"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    invoke-static {p0, v0}, Lcom/motorola/android/internal/policy/impl/Alarm;->disableSnoozeAlert(Landroid/content/Context;Lcom/motorola/android/internal/policy/impl/Alarm;)V

    .line 312
    sget-object v9, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v10, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9, v7, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 322
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 317
    :cond_6
    iget-wide v9, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    cmp-long v9, v9, v2

    if-gez v9, :cond_5

    .line 318
    iget-wide v2, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 319
    move-object v1, v0

    goto :goto_1
.end method

.method static disableSnoozeAlert(Landroid/content/Context;Lcom/motorola/android/internal/policy/impl/Alarm;)V
    .locals 8
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v7, 0x0

    .line 360
    const-wide/16 v2, 0x0

    .line 361
    .local v2, time:J
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    iget-wide v2, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 363
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v1, cv:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "snoozed"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v4, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    sget-object v4, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 390
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/motorola/android/internal/policy/impl/Alarm;->DM24:Ljava/lang/String;

    .line 391
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 390
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/policy/impl/Alarm;->DM12:Ljava/lang/String;

    goto :goto_0

    .line 391
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static saveNextAlarmProvider(Landroid/content/Context;Lcom/motorola/android/internal/policy/impl/Alarm;)V
    .locals 6
    .parameter "context"
    .parameter "alarm"

    .prologue
    .line 372
    const-string v1, ""

    .line 373
    .local v1, timeString:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 374
    .local v2, time_utc:J
    if-eqz p1, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 376
    .local v0, c:Ljava/util/Calendar;
    iget-wide v4, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 377
    invoke-static {p0, v0}, Lcom/motorola/android/internal/policy/impl/Alarm;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 378
    iget-wide v2, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    .line 380
    .end local v0           #c:Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "next_alarm_formatted"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "next_alarm_utc"

    invoke-static {v4, v5, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 384
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    const v0, 0x2050015

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-wide v3, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->silent:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozed:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozetime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm;->sidekey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v0, v2

    .line 62
    goto :goto_2

    :cond_3
    move v1, v2

    .line 63
    goto :goto_3
.end method
