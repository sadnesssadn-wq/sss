.class public Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private date:Ljava/lang/String;

.field private times:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->date:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->times:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->times:Ljava/util/ArrayList;

    return-object v0
.end method
