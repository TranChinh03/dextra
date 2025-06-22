import 'package:dextra/domain/entities/schedule_info.dart';
import 'package:dextra/domain/entities/statistic_result.dart';
import 'package:dextra/domain/models/base_api_response.dart';
import 'package:dextra/domain/models/query.dart';
import 'package:dextra/domain/usecases/statistic/commands/cancel_schedule/cancel_schedule_handler.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date/send_email_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/commands/send_email_by_date/send_email_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/fetch_schedules/fetch_schedules_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_cam_custom/statistic_by_cam_custom_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_cam_custom/statistic_by_cam_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_camera/statistic_by_camera_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_custom/statistic_by_custom_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_date/statistic_by_date_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_handler.dart';
import 'package:dextra/domain/usecases/statistic/queries/statistic_by_district/statistic_by_district_query.dart';
import 'package:dextra/domain/usecases/statistic/queries/tracking_by_date/tracking_by_date_handler.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'statistic_event.dart';
part 'statistic_state.dart';

@singleton
class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  final DetectByDateHandler _detectByDateHandler;
  final DetectByCustomHandler _detectByCustomHandler;
  final DetectByDistrictHandler _detectByDistrictHandler;
  final DetectByCameraHandler _detectByCameraHandler;
  final DetectByCameraCustomHandler _detectByCameraCustomHandler;
  final TrackingByDateHandler _trackingByDateHandler;
  final SendEmailByDateHandler _sendEmailByDateHandler;
  final FetchSchedulesHandler _fetchSchedulesHandler;
  final CancelScheduleHandler _cancelScheduleHandler;
  StatisticBloc(
      this._detectByDateHandler,
      this._detectByCustomHandler,
      this._detectByDistrictHandler,
      this._detectByCameraHandler,
      this._detectByCameraCustomHandler,
      this._trackingByDateHandler,
      this._sendEmailByDateHandler,
      this._fetchSchedulesHandler,
      this._cancelScheduleHandler)
      : super(StatisticState()) {
    on<DetectByDateEvent>(_onDetectByDate);
    on<DetectByCustomEvent>(_onDetectByCustom);
    on<DetectByDistrictEvent>(_onDetectByDistrict);
    on<DetectByCameraEvent>(_onDetectByCamera);
    on<DetectByCameraCustomEvent>(_onDetectByCamCustom);
    on<TrackingByDateEvent>(_onTrackingByDate);
    on<SendEmailByDateEvent>(_onSendEmailByDate);
    on<FetchSchedulesEvent>(_onFetchSchedules);
    on<CancelScheduleEvent>(_onCancelSchedule);
  }

  Future<void> _onDetectByDate(
    DetectByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByDateHandler.handle(Query(query: event.query));

    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByDate: response,
      ),
    );
  }

  Future<void> _onDetectByCustom(
    DetectByCustomEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByCustomHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByCustom: response,
      ),
    );
  }

  Future<void> _onDetectByDistrict(
    DetectByDistrictEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByDistrictHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByDistrict: response,
      ),
    );
  }

  Future<void> _onDetectByCamera(
    DetectByCameraEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByCameraHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByCamera: response,
      ),
    );
  }

  Future<void> _onDetectByCamCustom(
    DetectByCameraCustomEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response =
        await _detectByCameraCustomHandler.handle(Query(query: event.query));
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        resultByCameraCustom: response,
      ),
    );
  }

  Future<void> _onTrackingByDate(
    TrackingByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _trackingByDateHandler.handle();
    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        trackingByDate: response,
      ),
    );
  }

  Future<void> _onSendEmailByDate(
    SendEmailByDateEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(sendEmailState: ApiState(status: ApiStatus.loading)));

    final response =
        await _sendEmailByDateHandler.handle(Query(query: event.query));

    final message = response.data['message'];

    if (message == "Statistics email sent successfully") {
      emit(
        state.copyWith(
          sendEmailState: ApiState(
            status: ApiStatus.hasData,
            dataResponse: BaseApiResponse(
              message: tr('Common.email_successfully'),
            ),
          ),
        ),
      );
      return;
    }

    if (message == "Notification email sent for future date") {
      emit(
        state.copyWith(
          sendEmailState: ApiState(
            status: ApiStatus.hasData,
            dataResponse: BaseApiResponse(
              message: tr('Common.confirmation_email_sent'),
            ),
          ),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        sendEmailState: ApiState(
            status: ApiStatus.error,
            errorResponse: BaseApiResponse(
              code: '500',
              message: tr('Common.email_fail'),
            )),
      ),
    );
  }

  Future<void> _onFetchSchedules(
    FetchSchedulesEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    final response = await _fetchSchedulesHandler.handle(event.email);

    emit(
      state.copyWith(
        apiStatus: ApiStatus.hasData,
        schedules: response,
      ),
    );
  }

  Future<void> _onCancelSchedule(
    CancelScheduleEvent event,
    Emitter<StatisticState> emit,
  ) async {
    emit(state.copyWith(
      apiStatus: ApiStatus.loading,
      cancelScheduleStatus: ApiStatus.loading,
    ));

    final response = await _cancelScheduleHandler.handle(event.scheduleId);

    if (response.data['message'] == "Schedule cancelled successfully") {
      emit(
        state.copyWith(
          cancelScheduleStatus: ApiStatus.hasData,
          apiStatus: ApiStatus.hasData,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        cancelScheduleStatus: ApiStatus.error,
        apiStatus: ApiStatus.error,
      ),
    );
  }
}
